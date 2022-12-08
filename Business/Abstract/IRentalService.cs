using Core.Utilities.Results;
using Entities.Concrete;
using Entities.DTOs;

namespace Business.Abstract
{
    public interface IRentalService
    {
        IDataResult<List<Rental>> GetAll();
        IDataResult<List<RentalDetailDto>> GetRentalDetails();                
        IDataResult<List<Rental>> GetRentalByCarId(int id);
        IDataResult<List<Rental>> GetRentalByCustomerId(int id);        
        IDataResult<Rental?> GetById(int id);
        IResult Add(Rental entity);
        IResult Update(Rental entity);
        IResult Remove(Rental entity);
    }
}
