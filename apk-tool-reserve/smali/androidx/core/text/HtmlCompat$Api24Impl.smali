.class Landroidx/core/text/HtmlCompat$Api24Impl;
.super Ljava/lang/Object;
.source "0058.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/HtmlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I

    invoke-static {p0, p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method static fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method static toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    invoke-static {p0, p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    .line 1
    .local v0, "0058.java:1":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method
