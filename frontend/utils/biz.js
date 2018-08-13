export const fetchBizs = (data) => (
  $.ajax({
    method:'get',
    url: 'api/bizs',
    data
  })
);

export const fetchBiz = (id) => (
  $.ajax({
    method: 'get',
    url: `api/bizs/${id}`
  })
);
