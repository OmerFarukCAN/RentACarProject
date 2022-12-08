using Core.Utilities.Results;
using Entities.Concrete;

namespace Business.Abstract
{
    public interface IColorService
    {
        IDataResult<List<Color>> GetAll();
        IDataResult<Color?> GetById(int id);
        IResult Add(Color entity);
        IResult Update(Color entity);
        IResult Remove(Color entity);
    }
}
