using Business.Abstract;
using Business.BusinessAspects.Autofac;
using Business.Constants;
using Business.ValidationRules;
using Core.Aspects.Autofac.Validation;
using Core.Utilities.Business;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Performance;
using Core.Aspects.Autofac.Transaction;

namespace Business.Concrete
{
    public class CarManager : ICarService
    {
        private readonly ICarDal _carDal;
        private readonly IBrandService _brandService;

        public CarManager(ICarDal carDal, IBrandService brandService)
        {
            _carDal = carDal;
            _brandService = brandService;
        }

        [SecuredOperation("product.add, admin")]
        [ValidationAspect(typeof(CarValidator))]
        [CacheRemoveAspect("IProductService.Get")]
        public IResult Add(Car car)
        {
            var result = BusinessRules.Run(CheckIfCarCountOfBrandCorrect(car.Id),
                CheckIfCarDescriptionAlreadyExists(car.Description), CheckIfBrandCountCorrect());

            if (result != null)
            {
                return result;
            }
            _carDal.Add(car);
            return new SuccessResult(Messages.CarAdded);
        }

        [ValidationAspect(typeof(CarValidator))]
        [CacheRemoveAspect("IProductService.Get")]
        public IResult Update(Car car)
        {
            _carDal.Update(car);
            return new SuccessResult(Messages.CarUpdated);
        }

        public IResult Remove(Car car)
        {
            _carDal.Remove(car);
            return new SuccessResult(Messages.CarRemoved);
        }

        [TransactionScopeAspect]
        public IResult AddTransactionalTest(Car car)
        {
            _carDal.Update(car);
            _carDal.Add(car);
            return new SuccessResult(Messages.CarUpdated);
        }

        [CacheAspect]
        public IDataResult<List<Car>> GetAll()
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(), Messages.CarsListed);
        }

        public IDataResult<List<CarDetailDto>> GetCarDetails()
        {
            return new SuccessDataResult<List<CarDetailDto>>(_carDal.GetCarDetailsDto(), Messages.CarDetails);
        }

        public IDataResult<List<Car>> GetCarsByBrandId(int brandId)
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(c => c.Id == brandId), Messages.CarListed);
        }

        public IDataResult<List<Car>> GetCarsByColorId(int colorId)
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(c => c.Id == colorId), Messages.CarsListedByColor);
        }
        public IDataResult<List<Car>> GetCarsByDailyPrice(int min, int max)
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(c => c.DailyPrice > min && c.DailyPrice < max), Messages.CarsListedByDailyPrice);
        }

        public IDataResult<List<Car>> GetCarsByModelYear(int modelYear)
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(c => c.ModelYear == modelYear), Messages.CarsListedByModelYear);
        }

        [CacheAspect]
        [PerformanceAspect(5)]
        public SuccessDataResult<Car?> GetById(int carId)
        {
            return new SuccessDataResult<Car?>(_carDal.Get(c => c.Id == carId), Messages.CarListById);
        }

        // Business Rules

        private IResult CheckIfCarCountOfBrandCorrect(int brandId)
        {
            var result = _carDal.GetAll(c => c.BrandId == brandId).Count;

            if (result > 10)
            {
                return new ErrorResult(Messages.CarCountOfBrandError);
            }
            return new SuccessResult();
        }

        private IResult CheckIfCarDescriptionAlreadyExists(string? description)
        {
            var result = _carDal.GetAll(c => c.Description == description).Count;
            if (result > 0)
            {
                return new ErrorResult(Messages.CarDescriptionAlreadyExist);
            }
            return new SuccessResult();
        }

        private IResult CheckIfBrandCountCorrect()
        {
            var result = _brandService.GetAll().Data.Count;
            if (result > 15)
            {
                return new ErrorResult(Messages.CheckIfBrandCountCorrect);
            }
            return new SuccessResult();
        }
    }
}


// --> İş kurallarını