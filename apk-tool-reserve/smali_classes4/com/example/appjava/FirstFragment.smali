.class public Lcom/example/appjava/FirstFragment;
.super Landroidx/fragment/app/Fragment;
.source "FirstFragment.java"


# instance fields
.field private binding:Lcom/example/appjava/databinding/FragmentFirstBinding;


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

    invoke-static {p1, p2, v0}, Lcom/example/appjava/databinding/FragmentFirstBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/FragmentFirstBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/appjava/FirstFragment;->binding:Lcom/example/appjava/databinding/FragmentFirstBinding;

    invoke-virtual {v0}, Lcom/example/appjava/databinding/FragmentFirstBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/appjava/FirstFragment;->binding:Lcom/example/appjava/databinding/FragmentFirstBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/example/appjava/FirstFragment;->binding:Lcom/example/appjava/databinding/FragmentFirstBinding;

    iget-object v0, v0, Lcom/example/appjava/databinding/FragmentFirstBinding;->buttonFirst:Landroid/widget/Button;

    new-instance v1, Lcom/example/appjava/FirstFragment$1;

    invoke-direct {v1, p0}, Lcom/example/appjava/FirstFragment$1;-><init>(Lcom/example/appjava/FirstFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
