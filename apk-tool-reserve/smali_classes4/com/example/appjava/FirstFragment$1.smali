.class Lcom/example/appjava/FirstFragment$1;
.super Ljava/lang/Object;
.source "FirstFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/appjava/FirstFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/appjava/FirstFragment;


# direct methods
.method constructor <init>(Lcom/example/appjava/FirstFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/appjava/FirstFragment$1;->this$0:Lcom/example/appjava/FirstFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/example/appjava/FirstFragment$1;->this$0:Lcom/example/appjava/FirstFragment;

    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/appjava/R$id;->action_FirstFragment_to_SecondFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method
