using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System.Linq.Expressions;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfCarDal : EfEntityRepositoryBase<Car, ReCapDbContext>, ICarDal
    {

        public List<CarDetailDto> GetCarDetailsDto(Expression<Func<CarDetailDto, bool>>? filter = null)
        {
            using ReCapDbContext context = new ReCapDbContext();
            var result = from c in context.Cars
                join b in context.Brands
                    on c.BrandId equals b.Id
                join co in context.Colors
                    on c.ColorId equals co.Id
                select new CarDetailDto
                {
                    CarId = c.Id,
                    BrandName = b.BrandName,
                    ColorName = co.ColorName,
                    ModelYear = c.ModelYear,
                    DailyPrice = c.DailyPrice,
                    Description = c.Description,
                };
            return filter == null
                ? result.ToList()
                : result.Where(filter).ToList();
        }
    }
}
