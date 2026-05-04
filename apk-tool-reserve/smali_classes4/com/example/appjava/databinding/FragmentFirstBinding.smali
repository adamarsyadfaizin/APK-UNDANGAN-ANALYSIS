.class public final Lcom/example/appjava/databinding/FragmentFirstBinding;
.super Ljava/lang/Object;
.source "FragmentFirstBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonFirst:Landroid/widget/Button;

.field public final imageView2:Landroid/widget/ImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textviewFirst:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/appjava/databinding/FragmentFirstBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/example/appjava/databinding/FragmentFirstBinding;->buttonFirst:Landroid/widget/Button;

    iput-object p3, p0, Lcom/example/appjava/databinding/FragmentFirstBinding;->imageView2:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/example/appjava/databinding/FragmentFirstBinding;->textviewFirst:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/appjava/databinding/FragmentFirstBinding;
    .locals 6

    sget v0, Lcom/example/appjava/R$id;->button_first:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_2

    sget v0, Lcom/example/appjava/R$id;->imageView2:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    sget v0, Lcom/example/appjava/R$id;->textview_first:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/example/appjava/databinding/FragmentFirstBinding;

    move-object v5, p0

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/example/appjava/databinding/FragmentFirstBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v4

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/appjava/databinding/FragmentFirstBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/appjava/databinding/FragmentFirstBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/FragmentFirstBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/FragmentFirstBinding;
    .locals 2

    sget v0, Lcom/example/appjava/R$layout;->fragment_first:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {v0}, Lcom/example/appjava/databinding/FragmentFirstBinding;->bind(Landroid/view/View;)Lcom/example/appjava/databinding/FragmentFirstBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/example/appjava/databinding/FragmentFirstBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    iget-object v0, p0, Lcom/example/appjava/databinding/FragmentFirstBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
