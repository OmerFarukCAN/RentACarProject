using Entities.Concrete;
using FluentValidation;

namespace Business.ValidationRules
{
    public class CarValidator : AbstractValidator<Car>
    {
        public CarValidator()
        {
            RuleFor(c => c.Description).NotEmpty();
            RuleFor(c => c.Description).MinimumLength(2);
            //RuleFor(c => c.Description).Must(StartsWithA).WithMessage("Car description must be starts with a or A"); // --> optional rule example

            RuleFor(c => c.DailyPrice).NotEmpty();
            RuleFor(c => c.DailyPrice).GreaterThanOrEqualTo(0);
            RuleFor(c => c.DailyPrice).GreaterThanOrEqualTo(300).When(c => c.BrandId == 1);
        }

        // --> optional rule method
        //private bool StartsWithA(string arg)
        //{
        //    return arg.StartsWith("A") || arg.StartsWith("a");
        //}
    }
}
