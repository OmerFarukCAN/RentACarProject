using Business.Concrete;
using DataAccess.Concrete.EntityFramework;

namespace Console
{
    internal class Program
    {
        static void Main(string[] args)
        {
            CarManager carManager = new(new EfCarDal(), new BrandManager(new EfBrandDal()));
            RentalManager rentalManager = new(new EfRentalDal());

            CarManagerDemo(carManager);
            RentalManagerDemo(rentalManager);

            static void CarManagerDemo(CarManager carManager)
            {
                var result = carManager.GetCarDetails();

                if (result.Success)
                {
                    System.Console.WriteLine(result.Message);

                    foreach (var car in result.Data)
                    {
                        System.Console.WriteLine(car.CarId + " " + car.ModelYear + " " + car.BrandName + " - " + car.Description + " " + car.ColorName);
                    }
                }
                else
                {
                    System.Console.WriteLine(result.Message);
                }
            }
            static void RentalManagerDemo(RentalManager rentalManager)
            {
                var result = rentalManager.GetRentalDetails();

                if (result.Success)
                {
                    System.Console.WriteLine(result.Message);

                    foreach (var rental in result.Data)
                    {
                        System.Console.WriteLine(rental.RentalId + " " + rental.CarId + " " + rental.CustomerId + " " + rental.BrandName + " " + rental.CarDescription + " " + rental.RentDate + rental.ReturnDate);
                    }
                }
            }
        }
    }
}