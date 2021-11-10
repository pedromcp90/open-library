<!-- Modal -->
<div class="modal fade" id="newEntryModal" tabindex="-1" aria-labelledby="newEntryLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newEntryLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body ">

                <div id="author-form" class="new-entry-form-wrapper">
                    <form action="{{ url('/admin/author') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @include('author.form', ['mode' => 'create'])
                    </form>

                </div>
                <div id="category-form" class="new-entry-form-wrapper">
                    <form action="{{ url('/admin/category') }}" method="post">
                        @csrf
                        @include('category.form', ['mode' => 'create'])
                    </form>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
