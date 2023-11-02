<!doctype html>
<html lang="en">
<head>
    <#include "fragments/head.ftl">
</head>
<body>
<div class="w-full h-full flex min-h-screen flex-col items-center justify-center overflow-hidden bg-white dark:bg-zinc-600">
    <div class="relative isolate flex h-screen w-full flex-col items-center justify-center overflow-hidden">
        <div
                class="absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80"
                aria-hidden="true"
        >
            <div class="relative left-[calc(50%-11rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]"></div>
        </div>
        <div class="w-full h-full flex flex-col justify-items-center overflow-y-auto overflow-hidden px-40 py-10">
            <#--            <#include "fragments/header.ftl">-->
            <div class="flex flex-col items-start justify-center md:px-12 px-10 pt-4 overflow-y-auto">
                <#--                <#include "fragments/category.ftl">-->
                <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-6xl dark:text-gray-300">
                    All-Course Spring Boot Java By WxsDev</h1>
                <p class="mt-6 text-lg leading-8 text-gray-600 dark:text-gray-400">
                    Anim aute id magna aliqua ad ad non deserunt sunt. Quiirure qui lorem cupidatat commodo. Elit sunt
                    amet fugiat veniam occaecat fugiat aliqua.</p>
                <div class="flex flex-wrap gap-3 mt-8">
                    <a href="/allPatients"
                       class="inline-flex items-center justify-center px-6 py-3 text-base font-medium text-white bg-indigo-600 border border-transparent rounded-md shadow-sm hover:bg-indigo-700 duration-200 transition-colors">
                        Quản lý người dùng
                    </a>
                </div>
            </div>
            <#--            <#include "fragments/footer.ftl">-->
        </div>
        <div
                class="absolute inset-x-0 top-[calc(100%-13rem)] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[calc(100%-30rem)]"
                aria-hidden="true"
        >
            <div class="relative left-[calc(50%+3rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30 sm:left-[calc(50%+36rem)] sm:w-[72.1875rem]"></div>
        </div>
    </div>
</div>
</body>
</html>