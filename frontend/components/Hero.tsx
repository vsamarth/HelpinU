import { MagnifyingGlassIcon } from "@heroicons/react/24/outline";
import Link from "next/link";

function Hero() {
  return (
    <section>
      <NavigationMenu />
      <div className="py-16 px-12 flex justify-between">
        <div className="flex flex-col mt-16 ml-10 max-w-[480px]">
          <h1 className="text-4xl tracking-light text-gray-900 font-medium flex flex-col">
            Helping You Help Others!
          </h1>
          <p className="mt-6 text-lg text-gray-600">
            We're an inclusive and diversity-focused organization, intent on
            catering to users across all ages, backgrounds and professions,
            making us milieu-agnostic and keeping us en route with our vision to
            be the future of volunteering.
          </p>
          <div className="mt-6">
            <button className="text-red-600 text-lg">Learn More!</button>
          </div>
        </div>
        <div className="w-[560px] h-[320px] bg-black rounded-[4rem] ">
          <img
            src="https://images.unsplash.com/photo-1616680214452-df6901ae5727?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
            alt=""
            className="rounded-[4rem]"
          />
        </div>
      </div>
      <Partners />
    </section>
  );
}

const logos = [
  "https://water.org/static/img/water-org-logo.bd23a712cf69.svg",
  //   "https://tarumitra.org/wp-content/uploads/img-logo-1.png",
  "https://smilefoundationsa.org/wp-content/uploads/2022/01/logo.svg",
  "https://vectorlogoseek.com/wp-content/uploads/2018/09/make-a-wish-vector-logo.png",
];

function Partners() {
  return (
    <div className="mt-8 border-b py-8 pb-12">
      <div className="text-center text-2xl font-semibold tracking-wide">
        Our Partner Organizations!
      </div>
      <div className="flex justify-center gap-6 mt-4">
        {logos.map((logo) => (
          <img src={logo} alt="" className="w-32" />
        ))}
      </div>
    </div>
  );
}

function NavigationMenu() {
  return (
    <div className="h-16 flex items-center px-4 justify-between">
      <div>
        <img src="/logo.png" className="h-12" alt="" />
      </div>
      <div className="flex gap-4 divide-x">
        <div className="flex items-center">
          <Link href="/search">
            <MagnifyingGlassIcon className="w-4" />
          </Link>
        </div>
        <div className="space-x-4 pl-4">
          <Link href="/login">
            <button className="font-medium text-red-600">Sign in</button>
          </Link>
          <Link href="/register">
            <button className="bg-red-500 text-white px-4 py-2 rounded-lg">
              Create your account
            </button>
          </Link>
        </div>
      </div>
    </div>
  );
}

export default Hero;
