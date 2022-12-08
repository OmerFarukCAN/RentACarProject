using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;

namespace Business.Concrete
{
    public class RentalManager : IRentalService
    {
        private readonly IRentalDal _rentalDal;

        public RentalManager(IRentalDal rentalDal)
        {
            _rentalDal = rentalDal;
        }

        public IResult Add(Rental entity)
        {
            if (entity.ReturnDate == null)
            {
                return new ErrorResult(Messages.AlreadyRented);
            }
            _rentalDal.Add(entity);
            return new SuccessResult(Messages.RentalAdded);
        }
        public IResult Remove(Rental entity)
        {
            _rentalDal.Remove(entity);
            return new SuccessResult(Messages.RentalDeleted);
        }

        public IResult Update(Rental entity)
        {
            _rentalDal.Update(entity);
            return new SuccessResult(Messages.RentalUpdated);
        }

        public IDataResult<List<Rental>> GetAll()
        {
            return new SuccessDataResult<List<Rental>>(_rentalDal.GetAll(), Messages.RentalsListed);
        }

        public IDataResult<Rental?> GetById(int id)
        {
            return new SuccessDataResult<Rental?>(_rentalDal.Get(r => r.Id == id), Messages.RentalListed);
        }

        public IDataResult<List<Rental>> GetRentalByCarId(int id)
        {
            return new SuccessDataResult<List<Rental>>(_rentalDal.GetAll(r => r.CarId == id), Messages.RentalsListedByCarId);
        }

        public IDataResult<List<Rental>> GetRentalByCustomerId(int id)
        {
            return new SuccessDataResult<List<Rental>>(_rentalDal.GetAll(r => r.CustomerId == id), Messages.RentalsListedByCustomerId);
        }

        public IDataResult<List<RentalDetailDto>> GetRentalDetails()
        {
            return new SuccessDataResult<List<RentalDetailDto>>(_rentalDal.GetRentalDetailsDto(), Messages.RentalDetails);
        }
    }
}
