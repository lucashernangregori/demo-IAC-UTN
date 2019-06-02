using NUnit.Framework;
using WebPage.Logic;

namespace Tests
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            var math = new Math();
            int resultado = math.Sumar(1, 2);
            Assert.AreEqual(3, resultado);
        }
    }
}