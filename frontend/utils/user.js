export const getCurrentUser = (id) => (
  $.ajax({
    method: 'get',
    url: `api/users/${id}`
  })
);
