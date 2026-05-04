.class Landroidx/core/app/AppOpsManagerCompat$Api23Impl;
.super Ljava/lang/Object;
.source "002D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static noteProxyOp(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static noteProxyOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1
    .local v0, "002D.java:1":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method
