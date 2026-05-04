.class public final Lcom/example/appjava/databinding/FragmentSecondBinding;
.super Ljava/lang/Object;
.source "FragmentSecondBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageView2:Landroid/widget/ImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textviewSecond:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/appjava/databinding/FragmentSecondBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/example/appjava/databinding/FragmentSecondBinding;->imageView2:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/example/appjava/databinding/FragmentSecondBinding;->textviewSecond:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/appjava/databinding/FragmentSecondBinding;
    .locals 5

    sget v0, Lcom/example/appjava/R$id;->imageView2:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget v0, Lcom/example/appjava/R$id;->textview_second:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/example/appjava/databinding/FragmentSecondBinding;

    move-object v4, p0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v3, v4, v1, v2}, Lcom/example/appjava/databinding/FragmentSecondBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/appjava/databinding/FragmentSecondBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/appjava/databinding/FragmentSecondBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/FragmentSecondBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/FragmentSecondBinding;
    .locals 2

    sget v0, Lcom/example/appjava/R$layout;->fragment_second:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {v0}, Lcom/example/appjava/databinding/FragmentSecondBinding;->bind(Landroid/view/View;)Lcom/example/appjava/databinding/FragmentSecondBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/example/appjava/databinding/FragmentSecondBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    iget-object v0, p0, Lcom/example/appjava/databinding/FragmentSecondBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
