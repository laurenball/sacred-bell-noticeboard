json.extract! notice, :id, :title, :sessions, :openings, :author, :notes, :reward, :requester, :created_at, :updated_at
json.url notice_url(notice, format: :json)
