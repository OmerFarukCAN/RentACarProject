﻿using System.Diagnostics;
using Core.CrossCuttingConcerns.Caching;
using Core.CrossCuttingConcerns.Caching.Microsoft;
using Core.Utilities.IoC;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace Core.DependencyResolvers
{
    public class CoreModule : ICoreModule
    {
        public void Load(IServiceCollection serviceCollections)
        {
            serviceCollections.AddMemoryCache();
            serviceCollections.AddSingleton<Stopwatch>();
            serviceCollections.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            serviceCollections.AddSingleton<ICacheService, MemoryCacheManager>();
        }
    }
}
