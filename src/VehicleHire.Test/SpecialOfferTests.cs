using NUnit.Framework;

namespace VehicleHire.Test
{
    [TestFixture]
    public class enquiry_has_one_applicable_special_offer : IAgent
    {
        private Notification _notification;

        [Test]
        public void i_am_notified()
        {
            var specialOffer = new SpecialOffer(new LuxurySuv());

            var agent = this;
            var enquiry = new Enquiry(agent, new BudgetSuv());

            new GetSpecialOffers().For(enquiry);

            Assert.That(_notification, Is.Not.Null);
        }

        public void Handle(Notification notification)
        {
            _notification = notification;
        }
    }

    [TestFixture]
    public class enquiry_has_no_applicable_special_offers : IAgent
    {
        private Notification _notification;

        [Test]
        public void i_am_not_notified()
        {
            var specialOffer = new SpecialOffer(new LuxurySuv());

            var agent = this;
            var enquiry = new Enquiry(agent, new BudgetSuv());

            new GetSpecialOffers().For(enquiry);

            Assert.That(_notification, Is.Null);
        }

        public void Handle(Notification notification)
        {
            _notification = notification;
        }
    }

    public class BudgetSuv : Suv
    {
    }

    public class LuxurySuv : Suv
    {
    }

    public class Suv : VehicleClass
    {
    }

    public class VehicleClass
    {
    }
 
    public class SpecialOffer
    {
        private readonly VehicleClass _vehicleClass;

        public SpecialOffer(VehicleClass vehicleClass)
        {
            _vehicleClass = vehicleClass;
        }
    }

    public interface IAgent
    {
        void Handle(Notification notification);
    }

    public class GetSpecialOffers
    {
        public void For(Enquiry enquiry)
        {
            enquiry.Handle(new SpecialOfferFound());
        }
    }

    public class SpecialOfferFound : Event
    {
    }

    public class Event
    {
    }

    public class Enquiry
    {
        private readonly VehicleClass _vehicleClass;
        private readonly IAgent _agent;

        public Enquiry(IAgent agent, VehicleClass vehicleClass)
        {
            _vehicleClass = vehicleClass;
            _agent = agent;
        }

        public void Handle(SpecialOfferFound specialOfferFound)
        {
            _agent.Handle(new Notification());
        }
    }

    public class Notification
    {
    }
}