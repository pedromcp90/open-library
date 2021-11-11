<div class="container-fluid">
    <div class="row">
        <div class="col-12 text-center">
            <h1>Reservations list</h1>
        </div>
        <div class="col-10 offset-1">
            <div class="table-responsive">
                <table class="table align-items-center" data-order="[[ 2, &quot;desc&quot; ]]">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">User</th>
                            <th>Book</th>
                            <th>Reservation Date</th>
                            <th>Due date</th>
                            <th>Return date</th>
                            <th>Status</th>
                            <th class="text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="list">

                        @foreach ($reservations as $reservation)
                            @php
                                $user = $users_by_id[$reservation['user_id']];
                                $book = $books_by_id[$reservation['book_id']];
                            @endphp
                            <tr>
                                <td class="user">{{ $user->getName() }}</td>
                                <td class="book-title">{{ $book->getName() }}</td>
                                <td class="reservation-date">
                                    {{ date('Y-m-d', strtotime($reservation['reserve_date'])) }}</td>
                                <td class="due-date">{{ date('Y-m-d', strtotime($reservation['due_date'])) }}
                                </td>
                                <td class="return-date">
                                    {{ !is_null($reservation['return_date']) ? date('Y-m-d', strtotime($reservation['return_date'])) : '' }}
                                </td>
                                <td>
                                    <span class="badge badge-dot mr-4 text-center">
                                        @php
                                            switch ($reservation['status_code']) {
                                                case 1:
                                                    echo '<i class="bg-success"></i>';
                                                    break;
                                                case 2:
                                                    echo '<i class="bg-info"></i>';
                                                    break;
                                                case 3:
                                                    echo '<i class="bg-warning"></i>';
                                                    break;
                                                case 4:
                                                    echo '<i class="bg-danger"></i>';
                                                    break;
                                            }
                                        @endphp
                                        <span class="status">{{ $reservation['status'] }}</span>
                                    </span>
                                </td>


                                <td class="text-center">
                                    <a class="btn btn-sm btn-info"
                                        href="{{ url('/admin/reservations/' . $reservation['id'] . '/returned') }}"
                                        data-toggle="tooltip" data-placement="bottom" title="Returned"><i
                                            class="fa fa-pen"></i></a>

                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
