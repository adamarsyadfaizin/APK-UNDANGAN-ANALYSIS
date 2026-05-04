.class public final Lcom/example/appjava/databinding/ContentMainBinding;
.super Ljava/lang/Object;
.source "ContentMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/appjava/databinding/ContentMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/appjava/databinding/ContentMainBinding;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/example/appjava/databinding/ContentMainBinding;

    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v1}, Lcom/example/appjava/databinding/ContentMainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/appjava/databinding/ContentMainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/appjava/databinding/ContentMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/ContentMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/appjava/databinding/ContentMainBinding;
    .locals 2

    sget v0, Lcom/example/appjava/R$layout;->content_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {v0}, Lcom/example/appjava/databinding/ContentMainBinding;->bind(Landroid/view/View;)Lcom/example/appjava/databinding/ContentMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/example/appjava/databinding/ContentMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcom/example/appjava/databinding/ContentMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
