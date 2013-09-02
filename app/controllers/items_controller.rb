class ItemsController < ApplicationController
  def tree
    render json: json_fixture.to_json
  end

  def json_fixture
    [
      {
        key: "apptastic",
        title: "Server",
        isFolder: true,
        children: [
          {
            key: "1",
            title: "apps",
            isFolder: true,
            children: [
              {
                key: "4",
                title: "assets",
                isFolder: true
              },
              {
                key: "5",
                title: "application.js"
              }
            ]
          },
          {
            key: "2",
            title: "config",
            isFolder: true
          },
          {
            key: "3",
            title: "README.rst",
            isFolder: false
          }
        ]
      }
    ]
  end
end
