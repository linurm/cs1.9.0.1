.class public LExtS8AndroidHelper;
.super Ljava/lang/Object;
.source "ExtS8AndroidHelper.java"


# static fields
.field private static final CRASH_REPORTER_START_DELAY:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(LExtS8AndroidHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, LExtS8AndroidHelper;->showAlertViewOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(LExtS8AndroidHelper;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, LExtS8AndroidHelper;->onReceiveHTTPSResponse(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(LExtS8AndroidHelper;I[BI)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, LExtS8AndroidHelper;->onReceiveHTTPSData(I[BI)V

    return-void
.end method

.method static synthetic access$300(LExtS8AndroidHelper;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, LExtS8AndroidHelper;->didFinishLoadingHTTPSData(I)V

    return-void
.end method

.method static synthetic access$400(LExtS8AndroidHelper;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, LExtS8AndroidHelper;->didFailWithError(ILjava/lang/String;)V

    return-void
.end method

.method private native didFailWithError(ILjava/lang/String;)V
.end method

.method private native didFinishLoadingHTTPSData(I)V
.end method

.method private native onReceiveHTTPSData(I[BI)V
.end method

.method private native onReceiveHTTPSResponse(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private showAlertViewOnUiThread(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 63
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v4, "title"

    .line 66
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "message"

    .line 67
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    const-string v4, "buttonTitles"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 70
    if-eqz v4, :cond_1

    .line 72
    const-string v5, "cancelable"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    const-string v5, "cancelable"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 77
    new-instance v0, LExtS8AndroidHelper$2;

    invoke-direct {v0, p0}, LExtS8AndroidHelper$2;-><init>(LExtS8AndroidHelper;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 84
    packed-switch v0, :pswitch_data_0

    .line 114
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 119
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0

    .line 86
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LExtS8AndroidHelper$3;

    invoke-direct {v1, p0}, LExtS8AndroidHelper$3;-><init>(LExtS8AndroidHelper;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LExtS8AndroidHelper$4;

    invoke-direct {v1, p0}, LExtS8AndroidHelper$4;-><init>(LExtS8AndroidHelper;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LExtS8AndroidHelper$5;

    invoke-direct {v1, p0}, LExtS8AndroidHelper$5;-><init>(LExtS8AndroidHelper;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "marmalade7"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public connectHTTPS(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 128
    new-instance v0, LExtS8AndroidHelper$6;

    invoke-direct {v0, p0, p1, p2, p3}, LExtS8AndroidHelper$6;-><init>(LExtS8AndroidHelper;Ljava/lang/String;Ljava/nio/ByteBuffer;I)V

    .line 162
    invoke-virtual {v0}, LExtS8AndroidHelper$6;->start()V

    .line 163
    return-void
.end method

.method public connectHttpsSynchronously(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/teamlava/base/HttpsResult;
    .locals 6

    .prologue
    .line 203
    new-instance v1, Lcom/teamlava/base/HttpsResult;

    invoke-direct {v1}, Lcom/teamlava/base/HttpsResult;-><init>()V

    .line 205
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 206
    iput-object p1, v1, Lcom/teamlava/base/HttpsResult;->url:Ljava/lang/String;

    .line 208
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 210
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 211
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 212
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v3

    .line 213
    invoke-interface {v3, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 214
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 216
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/teamlava/base/HttpsResult;->mimeType:Ljava/lang/String;

    .line 217
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/teamlava/base/HttpsResult;->encoding:Ljava/lang/String;

    .line 219
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 225
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x1000

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 226
    if-gez v4, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/teamlava/base/HttpsResult;->data:[B

    .line 233
    iget-object v0, v1, Lcom/teamlava/base/HttpsResult;->data:[B

    array-length v0, v0

    iput v0, v1, Lcom/teamlava/base/HttpsResult;->dataLength:I

    .line 241
    :goto_1
    return-object v1

    .line 229
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v2, "marmalade8"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/teamlava/base/HttpsResult;->errorMessage:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSystemUptime()J
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isWifiConnected()Z
    .locals 3

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v1, "marmalade9"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleAdbLogReporter()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    const-string v1, "ExtS8AndroidHelper"

    invoke-virtual {v0, v1, v3}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ADB_LOG_ENABLED"

    const-string v2, "disabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/teamlava/base/CrashReporterService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 195
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 197
    const/4 v2, 0x1

    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 199
    :cond_0
    return-void
.end method

.method public setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    const-string v1, "ExtS8AndroidHelper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method

.method public showAlertView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    new-instance v1, LExtS8AndroidHelper$1;

    invoke-direct {v1, p0, p1}, LExtS8AndroidHelper$1;-><init>(LExtS8AndroidHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method native showAlertViewCallback(I)V
.end method
