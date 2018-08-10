export const fetchBiz = (id) => (
  $.ajax({
    method: 'get',
    url: `api/bizs/${id}`
  })
);
