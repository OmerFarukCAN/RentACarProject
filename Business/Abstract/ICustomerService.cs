using Core.Utilities.Results;
using Entities.Concrete;

namespace Business.Abstract
{
    public interface ICustomerService
    {
        IDataResult<List<Customer>> GetAll();
        IDataResult<Customer?> GetById(int id);
        IResult Add(Customer entity);
        IResult Update(Customer entity);
        IResult Remove(Customer entity);
    }
}
