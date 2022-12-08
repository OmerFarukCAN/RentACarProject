using Core.Utilities.Results;
using Entities.Concrete;
using Entities.DTOs;

namespace Business.Abstract
{
    public interface ICarService
    {
        IDataResult<List<Car>> GetAll();
        IDataResult<List<CarDetailDto>> GetCarDetails();
        IDataResult<List<Car>> GetCarsByBrandId(int brandId);
        IDataResult<List<Car>> GetCarsByColorId(int colorId);
        IDataResult<List<Car>> GetCarsByDailyPrice(int min, int max);
        IDataResult<List<Car>> GetCarsByModelYear(int modelYear);
        SuccessDataResult<Car?> GetById(int carId);
        IResult? Add(Car car);
        IResult Update(Car car);
        IResult Remove(Car car);
        IResult? AddTransactionalTest(Car car);
    }
}
