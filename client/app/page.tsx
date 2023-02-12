import Image from 'next/image';

export default function Home() {
  return (
    <main className="w-full flex flex-col justify-center items-center text-center">
      <section className="w-full flex justify-center">
        <div className="text-white flex flex-col items-center mt-[30%] xl:mt-[10%] gap-6 w-[80%] xl:w-[50%]">
          <div className="font-bold text-[24px] sm:text-[48px] drop-shadow-2xl">
            Discover your own story
          </div>
          <div className="text-[16px] sm:text-[24px] drop-shadow-2xl">
            Do you want to find out the chance of you surviving the Titanic&apos;s historical event?
            Create your own story here at SOS.
          </div>
          <button className="bg-[#373EA6] px-4 py-2 rounded-lg shadow-lg">
            Get started
          </button>
        </div>
      </section>
    </main>
  )
}