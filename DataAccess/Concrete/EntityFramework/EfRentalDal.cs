using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System.Linq.Expressions;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfRentalDal : EfEntityRepositoryBase<Rental, ReCapDbContext>, IRentalDal
    {

        public List<RentalDetailDto> GetRentalDetailsDto(Expression<Func<RentalDetailDto, bool>>? filter = null)
        {
            using (ReCapDbContext context = new ReCapDbContext())
            {
                var result = from r in context.Rentals
                             join ca in context.Cars
                               on r.CarId equals ca.Id
                             join b in context.Brands
                               on ca.BrandId equals b.Id
                             join cu in context.Customers
                               on r.CustomerId equals cu.Id
                             select new RentalDetailDto
                             {
                                 RentalId = r.Id,
                                 CarId = ca.Id,
                                 CustomerId = cu.Id,
                                 BrandName = b.BrandName,
                                 CarDescription = ca.Description,
                                 RentDate = r.RentDate,
                                 ReturnDate = r.ReturnDate
                             };
                return filter == null
                    ? result.ToList()
                    : result.Where(filter).ToList();
            }
        }
    }
}
