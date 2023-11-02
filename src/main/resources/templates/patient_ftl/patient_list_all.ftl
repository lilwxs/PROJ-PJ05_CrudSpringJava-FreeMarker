<!doctype html>
<html lang="en">
<head>
    <#include "../fragments/head.ftl">
</head>
<body>
<div class="w-full h-screen bg-gray-100">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="flex flex-col">
            <div class="mb-4">
                <h1 class="text-3xl font-semibold leading-tight text-gray-900">${pageTitle} Management</h1>
            </div>
            <div class="-mb-2 py-4 flex flex-wrap flex-grow justify-between">
                <form class="flex items-center gap-x-2 py-2" >
                    <label for="inline-searcg"></label>
                    <input
                            class="bg-gray-200 appearance-none border-2 border-gray-200 rounded-xl w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500"
                            id="inline-searcg" type="text" placeholder="Search" name="keyword" />
                    <a href="/allPatients"
                            class="inline-block px-4 py-2 border border-transparent text-sm leading-5 font-medium rounded-xl text-white bg-indigo-600 hover:bg-indigo-500 focus:outline-none focus:shadow-outline">
                        Clear
                    </a>
                </form>
                <div class="flex items-center py-2">
                    <a href="/patients/new"
                       class="inline-block px-4 py-2 border border-transparent text-sm leading-5 font-medium rounded-xl text-white bg-indigo-600 hover:bg-indigo-500 focus:outline-none focus:shadow-outline">
                        Create new patient
                    </a>
                </div>
            </div>
            <div class="-my-2 py-2 sm:-mx-6 sm:px-6 lg:-mx-8 lg:px-8">
                <div class="w-full shadow rounded-xl border-b border-gray-200 table-collapse overflow-hidden">
                    <table class="w-full">
                        <!-- HEAD start -->
                        <thead class="bg-green-400">
                        <tr>
                            <th class="text-sm text-left uppercase font-bold text-grey-darker p-3 bg-grey-light">ID</th>
                            <th class="text-sm text-left uppercase font-bold text-grey-darker p-3 bg-grey-light">Full
                                Name
                            </th>
                            <th class="text-sm text-left uppercase font-bold text-grey-darker p-3 bg-grey-light">
                                Symptom
                            </th>
                            <th class="text-sm text-left uppercase font-bold text-grey-darker p-3 bg-grey-light text-center">
                                Medical
                                ID
                            </th>
                            <th class="text-sm uppercase font-semibold text-grey-darker p-3 bg-grey-light"></th>
                        </tr>
                        </thead>
                        <!-- HEAD end -->
                        <!-- BODY start -->
                        <tbody class="bg-white">
                        <#list listPatients as item>
                        <tr class="group cursor-pointer hover:bg-grey-lightest">
                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                <div class="text-sm leading-5 text-gray-900">
                                    ${item.id}
                                </div>
                            </td>
                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                <div class="text-sm leading-5 text-gray-900">
                                    ${item.fullname}
                                </div>
                            </td>
                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                <div class="text-sm leading-5 text-gray-900">
                                    ${item.symptom}
                                </div>
                            </td>
                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">
                                ${item.medicalId}
                            </td>
                            <td class="text-sm p-3 border-t border-grey-light whitespace-no-wrap text-sm group-hover:visible">
                                <div class="invisible group-hover:visible">
                                    <a href="/patients/edit/${item.id}"
                                       class="text-indigo-600 font-semibold hover:text-indigo-900 focus:outline-none focus:underline">
                                        Edit
                                    </a>
                                    <a href="/patients/delete/${item.id}"
                                       class="text-indigo-600 font-semibold hover:text-indigo-900 focus:outline-none focus:underline">
                                        Delete
                                    </a>
                                </div>
                            </td>
                            </#list>
                        </tr>
                        </tbody>
                        <!-- BODY end -->
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


</div>
</body>
</html>