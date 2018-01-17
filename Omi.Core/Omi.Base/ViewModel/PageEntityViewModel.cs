using Omi.Base.Collection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Omi.Base.ViewModel
{
    public class Pagination
    {
        public int TotalPage { get; set; }
        public int PageIndex { get; set; }

        public bool HasNextpage { get; set; }
        public bool HasPreviousPage { get; set; }
        public static Pagination FromPaginatedList<TEntity>(PaginatedList<TEntity> paginatedList)
            => new Pagination
            {
                TotalPage = paginatedList.TotalPages,
                PageIndex = paginatedList.PageIndex,
                HasNextpage = paginatedList.HasNextPage,
                HasPreviousPage = paginatedList.HasPreviousPage
            };
    }

    public class PageEntityViewModel<TEntity, TViewModel>
    {

        public PageEntityViewModel(
            PaginatedList<TEntity> pageEntity, Func<TEntity, TViewModel> func)
        {
            Entities = pageEntity.Select(func);
            Pager = Pagination.FromPaginatedList(pageEntity);
        }

        public Pagination Pager { get; set; }
        public IEnumerable<TViewModel> Entities { get; set; }
    }

    public class PaginationResult<TEntity, TViewModel>
    {
        public PaginationResult(
            PaginatedList<TEntity> pageEntity, Func<TEntity, TViewModel> func)
        {
            Content = pageEntity.Select(func);
            TotalPages = pageEntity.TotalPages;
            TotalItems = pageEntity.TotalItems;
            CurrentPage = pageEntity.PageIndex;
            Size = pageEntity.PageSize;
            HasNextpage = pageEntity.HasNextPage;
            HasPreviousPage = pageEntity.HasPreviousPage;
        }

        public int Size { get; set; }
        public int TotalItems { get; set; }
        public int TotalPages { get; set; }
        public int CurrentPage { get; set; }
        public bool HasNextpage { get; set; }
        public bool HasPreviousPage { get; set; }

        public IEnumerable<TViewModel> Content { get; set; }
    }
}
