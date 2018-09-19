export const getCurrentUser = (id) => (
  $.ajax({
    method: 'get',
    url: `api/users/${id}`
  })
);

export const editCurrentUserInfo = (id, user) => (
  $.ajax({
    method: 'patch',
    url: `api/users/${id}`,
    data: {user}
  })
);
