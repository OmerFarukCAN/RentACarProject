using Core.Utilities.Results;
using Entities.Concrete;

namespace Business.Abstract
{
    public interface IBrandService
    {
        IDataResult<List<Brand>> GetAll();
        IDataResult<Brand?> GetById(int id);
        IResult Add(Brand entity);
        IResult Update(Brand entity);
        IResult Remove(Brand entity);
    }
}
