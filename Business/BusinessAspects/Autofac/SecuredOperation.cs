using Business.Constants;
using Castle.DynamicProxy;
using Core.Utilities.Interceptors;
using Core.Utilities.IoC;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Core.Extensions;

namespace Business.BusinessAspects.Autofac
{
    public class SecuredOperation : MethodInterception
    {
        private readonly string[]? _roles;
        private readonly IHttpContextAccessor? _httpContextAccessor;

        public SecuredOperation(string? roles)
        {
            _roles = roles?.Split(',');
            if (ServiceTool.ServiceProvider != null)
                _httpContextAccessor = ServiceTool.ServiceProvider.GetService<IHttpContextAccessor>();
        }

        protected override void OnBefore(IInvocation invocation)
        {
            List<string>? roleClaims = _httpContextAccessor?.HttpContext.User.ClaimRoles();
            if (_roles != null)
                foreach (var role in _roles)
                {
                    if (roleClaims != null && roleClaims.Contains(role))
                    {
                        return;
                    }
                }

            throw new Exception(Messages.AuthorizationDenied);
        }
    }
}
