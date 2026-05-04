.class public Lcom/example/appjava/SecondFragment;
.super Landroidx/fragment/app/Fragment;
.source "SecondFragment.java"


# instance fields
.field private binding:Lcom/example/appjava/databinding/FragmentSecondBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/example/appjava/databinding/FragmentSecondBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/FragmentSecondBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/appjava/SecondFragment;->binding:Lcom/example/appjava/databinding/FragmentSecondBinding;

    invoke-virtual {v0}, Lcom/example/appjava/databinding/FragmentSecondBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/appjava/SecondFragment;->binding:Lcom/example/appjava/databinding/FragmentSecondBinding;

    return-void
.end method
