Team.destroy_all


##Teams
Team.create!([{name: 'Qatar'},
    {name: 'Ecuador'},
    {name: 'Senegal'},
    {name: 'Netherlands '},
    {name: 'England'},
    {name: 'Iran'},
    {name: 'USA'},
    {name: 'Wales '},
    {name: 'Argentina'},
    {name: 'Saudi Arabia'},
    {name: 'Mexico'},
    {name: 'Poland '},
    {name: 'France'},
    {name: 'Australia'},
    {name: 'Denmark'},
    {name: 'Tunisia '},
    {name: 'Spain'},
    {name: 'Costa Rica'},
    {name: 'Germany'},
    {name: 'Japan'},
    {name: 'Belgium'},
    {name: 'Canada'},
    {name: 'Morocco'},
    {name: 'Croatia'},
    {name: 'Brazil'},
    {name: 'Serbia'},
    {name: 'Switzerland'},
    {name: 'Cameroon'},
    {name: 'Portugal'},
    {name: 'Ghana'},
    {name: 'Uruguay'},
    {name: 'Korea Republic'}  
    ])

    p "Created #{Team.count} teams"

    #matches
    Match.destroy_all
    Match.create!([{local_id: 1,
    visitor_id: 2,
    datetime: DateTime.new(2022,11, 20, 11, 00),
    round: 1
    },
    {local_id: 1,
        visitor_id: 3,
        datetime: DateTime.new(2022,11, 21, 11, 00),
        round: 1
        },
    {local_id: 1,
        visitor_id: 4,
        datetime: DateTime.new(2022,11, 25, 11, 00),
        round: 1
        },
    {local_id: 2,
        visitor_id: 3,
        datetime: DateTime.new(2022,11, 25, 11, 00),
        round: 1
        },
    {local_id: 2,
        visitor_id: 4,
        datetime: DateTime.new(2022,11, 29, 11, 00),
        round: 1
        },
    {local_id: 3,
        visitor_id: 4,
        datetime: DateTime.new(2022,11, 29, 11, 00),
        round: 1
        },
    {local_id: 5,
        visitor_id: 6,
        datetime: DateTime.new(2022,11, 21, 11, 00),
        round: 2
    },
    {local_id: 5,
        visitor_id: 7,
        datetime: DateTime.new(2022,11, 21, 11, 00),
        round: 2
    },
    {local_id: 5,
        visitor_id: 8,
        datetime: DateTime.new(2022,11, 25, 11, 00),
        round: 2
    },
    {local_id: 6,
        visitor_id: 7,
        datetime: DateTime.new(2022,11, 25, 11, 00),
        round: 2
    },
    {local_id: 6,
        visitor_id: 8,
        datetime: DateTime.new(2022,11, 29, 11, 00),
        round: 2
    },
    {local_id: 7,
        visitor_id: 8,
        datetime: DateTime.new(2022,11, 29, 11, 00),
        round: 2
    },
    {local_id: 9,
        visitor_id: 10,
        datetime: DateTime.new(2022,11, 22, 11, 00),
        round: 3
    },
    {local_id: 9,
        visitor_id: 11,
        datetime: DateTime.new(2022,11, 22, 11, 00),
        round: 3
    },
    {local_id: 9,
        visitor_id: 12,
        datetime: DateTime.new(2022,11, 26, 11, 00),
        round: 3
    },
    {local_id: 10,
        visitor_id: 11,
        datetime: DateTime.new(2022,11, 26, 11, 00),
        round: 3
    },
    {local_id: 10,
        visitor_id: 12,
        datetime: DateTime.new(2022,11, 30, 11, 00),
        round: 3
    },
    {local_id: 11,
        visitor_id: 12,
        datetime: DateTime.new(2022,11, 30, 11, 00),
        round: 3
    },
    {local_id: 13,
        visitor_id: 14,
        datetime: DateTime.new(2022,11, 22, 11, 00),
        round: 4
    },
    {local_id: 13,
        visitor_id: 15,
        datetime: DateTime.new(2022,11, 22, 11, 00),
        round: 4
    },
    {local_id: 13,
        visitor_id: 16,
        datetime: DateTime.new(2022,11, 26, 11, 00),
        round: 4
    },
    {local_id: 14,
        visitor_id: 15,
        datetime: DateTime.new(2022,11, 26, 11, 00),
        round: 4
    },
    {local_id: 14,
        visitor_id: 16,
        datetime: DateTime.new(2022,11, 30, 11, 00),
        round: 4
    },
    {local_id: 15,
        visitor_id: 16,
        datetime: DateTime.new(2022,11, 30, 11, 00),
        round: 4
    },
    {local_id: 17,
        visitor_id: 18,
        datetime: DateTime.new(2022,11, 23, 11, 00),
        round:5 
    },
    {local_id: 17,
        visitor_id: 19,
        datetime: DateTime.new(2022,11, 23, 11, 00),
        round: 5
    },
    {local_id: 17,
        visitor_id: 20,
        datetime: DateTime.new(2022,11, 27, 11, 00),
        round: 5
    },
    {local_id: 18,
        visitor_id: 19,
        datetime: DateTime.new(2022,11, 27, 11, 00),
        round: 5
    },
    {local_id: 18,
        visitor_id: 20,
        datetime: DateTime.new(2022,12, 1, 11, 00),
        round: 5
    },
    {local_id: 19,
        visitor_id: 20,
        datetime: DateTime.new(2022,12, 1, 11, 00),
        round: 5
    },
    {local_id: 21,
        visitor_id: 22,
        datetime: DateTime.new(2022,11, 23, 11, 00),
        round:6
    },
    {local_id: 21,
        visitor_id: 23,
        datetime: DateTime.new(2022,11, 23, 11, 00),
        round:6
    },
    {local_id: 21,
        visitor_id: 24,
        datetime: DateTime.new(2022,11, 27, 11, 00),
        round:6
    },
    {local_id: 22,
        visitor_id: 23,
        datetime: DateTime.new(2022,11, 27, 11, 00),
        round:6
    },    {local_id: 22,
        visitor_id: 24,
        datetime: DateTime.new(2022,12, 1, 11, 00),
        round:6
    },
    {local_id: 23,
        visitor_id: 24,
        datetime: DateTime.new(2022,12, 1, 11, 00),
        round:6
    },
    {local_id: 25,
        visitor_id: 26,
        datetime: DateTime.new(2022,11, 24, 11, 00),
        round:7
    },
    {local_id: 25,
        visitor_id: 27,
        datetime: DateTime.new(2022,11, 24, 11, 00),
        round:7
    },
    {local_id: 25,
        visitor_id: 28,
        datetime: DateTime.new(2022,11, 28, 11, 00),
        round:7
    },
    {local_id: 26,
        visitor_id: 27,
        datetime: DateTime.new(2022,11, 28, 11, 00),
        round:7
    },
    {local_id: 26,
        visitor_id: 28,
        datetime: DateTime.new(2022,12, 2, 11, 00),
        round:7
    },
    {local_id: 27,
        visitor_id: 28,
        datetime: DateTime.new(2022,12, 2, 11, 00),
        round:7
    },
    {local_id: 29,
        visitor_id: 30,
        datetime: DateTime.new(2022,11, 24, 11, 00),
        round:8
    },
    {local_id: 29,
        visitor_id: 31,
        datetime: DateTime.new(2022,11, 24, 11, 00),
        round:8
    },
    {local_id: 29,
        visitor_id: 32,
        datetime: DateTime.new(2022,11, 28, 11, 00),
        round:8
    },
    {local_id: 30,
        visitor_id: 31,
        datetime: DateTime.new(2022,11, 28, 11, 00),
        round:8
    },
    {local_id: 30,
        visitor_id: 32,
        datetime: DateTime.new(2022,12, 2, 11, 00),
        round:8
    },
    {local_id: 31,
        visitor_id: 32,
        datetime: DateTime.new(2022,12, 2, 11, 00),
        round:8
    }
])
    p "Created #{Team.count} matches"

    g = Gambler.create(name: 'fungo', Email: 'asc@gmailcom' , Admin: true)
	g.password=('123')
	g.save

    g = Gambler.create(name: 'santi', Email: 'sant@gmailcom' , Admin: true)
	g.password=('123')
	g.save

    g = Gambler.create(name: 'vale', Email: 'vale@gmailcom' , Admin: true)
	g.password=('123')
	g.save
