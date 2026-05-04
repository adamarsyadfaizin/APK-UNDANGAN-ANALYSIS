.class public abstract Landroidx/recyclerview/widget/SortedListAdapterCallback;
.super Landroidx/recyclerview/widget/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/SortedList$Callback<",
        "TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList$Callback;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedListAdapterCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
