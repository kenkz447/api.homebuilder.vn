﻿using System;

namespace Omi.Extensions
{
    public static class ObjectExtension
    {
        /// <summary>
        /// Merges two object instances together.  The primary instance will retain all non-Null values, and the second will merge all properties that map to null properties the primary
        /// </summary>
        /// <typeparam name="T">Type Parameter of the merging objects. Both objects must be of the same type.</typeparam>
        /// <param name="primary">The object that is receiving merge data (modified)</param>
        /// <param name="secondary">The object supplying the merging properties.  (unmodified)</param>
        /// <returns>The primary object (modified)</returns>
        public static T MergeWith<T>(this T primary, T secondary)
        {
            foreach (var pi in typeof(T).GetProperties())
            {
                var priValue = pi.GetGetMethod().Invoke(primary, null);
                var secValue = pi.GetGetMethod().Invoke(secondary, null);
                if (priValue == null || (pi.PropertyType.IsValueType && priValue == Activator.CreateInstance(pi.PropertyType)))
                {
                    pi.GetSetMethod().Invoke(primary, new[] { secValue });
                }
            }
            return primary;
        }
    }
}