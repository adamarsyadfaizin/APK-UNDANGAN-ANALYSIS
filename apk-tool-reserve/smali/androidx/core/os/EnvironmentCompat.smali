.class public final Landroidx/core/os/EnvironmentCompat;
.super Ljava/lang/Object;
.source "004D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/EnvironmentCompat$Api19Impl;,
        Landroidx/core/os/EnvironmentCompat$Api21Impl;
    }
.end annotation


# static fields
.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "EnvironmentCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    nop

    invoke-static {p0}, Landroidx/core/os/EnvironmentCompat$Api21Impl;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1
    .local v0, "004D.java:1":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method
