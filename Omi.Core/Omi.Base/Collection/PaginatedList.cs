using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Omi.Base.Collection
{
    public class PaginatedList<T> : List<T>
    {
        public int PageSize { get; private set; }
        public int PageIndex { get; private set; }
        public int TotalPages { get; private set; }
        public int TotalItems { get; private set; }

        public PaginatedList(List<T> items, int count, int pageIndex, int pageSize, int totalItems = 0)
        {
            TotalItems = totalItems != 0 ? totalItems : items.Count;
            PageSize = pageSize;
            PageIndex = pageIndex;
            TotalPages = (int)Math.Ceiling(count / (double)pageSize);

            this.AddRange(items);
        }

        public bool HasPreviousPage
        {
            get
            {
                return (PageIndex > 1);
            }
        }

        public bool HasNextPage
        {
            get
            {
                return (PageIndex < TotalPages);
            }
        }

        public static async Task<PaginatedList<T>> CreateAsync(IQueryable<T> source, int pageIndex = 0, int pageSize = 0)
        {
            var count = await source.CountAsync();
            var items = source;

            if (pageIndex != 0)
                items = source.Skip((pageIndex - 1));
            if (pageSize != 0)
                items = items.Take(pageSize);

            return new PaginatedList<T>(await items.ToListAsync(), count, pageIndex, pageSize);
        }
    }
}
