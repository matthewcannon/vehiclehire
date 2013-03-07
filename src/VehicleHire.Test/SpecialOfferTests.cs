using NUnit.Framework;

namespace VehicleHire.Test
{
    [TestFixture]
    public class enquiry_has_one_applicable_special_offer : IAgent
    {
        private SpecialOfferAppliesToEnquiry _specialOfferAppliesToEnquiry;

        [Test]
        public void i_am_notified_that_a_special_offer_applies()
        {
            var specialOffer = new SpecialOffer(new LuxurySuv());

            var agent = this;
            var enquiry = new Enquiry(agent, new BudgetSuv());

            new GetSpecialOffers().For(enquiry);

            Assert.That(_specialOfferAppliesToEnquiry, Is.Not.Null);
        }

        public void Handle(SpecialOfferAppliesToEnquiry specialOfferAppliesToEnquiry)
        {
            _specialOfferAppliesToEnquiry = specialOfferAppliesToEnquiry;
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
        void Handle(SpecialOfferAppliesToEnquiry specialOfferAppliesToEnquiry);
    }

    public class GetSpecialOffers
    {
        public void For(Enquiry enquiry)
        {
            //enquiry.Handle(new SpecialOfferFound());
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
            _agent.Handle(new SpecialOfferAppliesToEnquiry(this));
        }
    }

    public class SpecialOfferAppliesToEnquiry
    {
        readonly Enquiry _enquiry;

        public SpecialOfferAppliesToEnquiry(Enquiry enquiry)
        {
            _enquiry = enquiry;
        }
    }
}