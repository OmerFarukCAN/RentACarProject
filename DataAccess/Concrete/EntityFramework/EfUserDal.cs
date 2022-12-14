using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using Entities.DTOs;
using System.Linq.Expressions;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfUserDal : EfEntityRepositoryBase<User, ReCapDbContext>, IUserDal
    {
        public List<OperationClaim> GetClaims(User? user)
        {
            using var context = new ReCapDbContext();
            var result = from operationClaim in context.OperationClaims
                         join userOperationClaim in context.UserOperationClaims
                             on operationClaim.Id equals userOperationClaim.OperationClaimId
                         where userOperationClaim.UserId == user!.Id
                         select new OperationClaim { Id = operationClaim.Id, Name = operationClaim.Name };
            return result.ToList();
        }

        public List<UserDto> GetUsersDtos(Expression<Func<UserDto, bool>>? filter = null)
        {
            using var context = new ReCapDbContext();
            var result = from user in context.Users
                         select new UserDto
                         {
                             Id = user.Id,
                             Email = user.Email,
                             FirstName = user.FirstName,
                             LastName = user.LastName
                         };
            return filter == null
                ? result.ToList()
                : result.Where(filter).ToList();
        }
    }
}
