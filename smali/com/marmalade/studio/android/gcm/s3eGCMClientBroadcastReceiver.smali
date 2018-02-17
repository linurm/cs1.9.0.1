.class public Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;
.super Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;
.source "s3eGCMClientBroadcastReceiver.java"


# static fields
.field private static m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private static m_NotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_NotificationId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;-><init>()V

    return-void
.end method

.method private doNotificationCallback()V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    const-string v0, "s3eGCMClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    const-string v1, "s3eGCMClientNotificationReceived"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;-><init>(Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doRegistrationCallback(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 109
    :try_start_0
    iget-object v4, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    .line 115
    const-string v0, "s3eGCMClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 118
    const-string v0, "s3eGCMClientRegistrationReceived"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 121
    new-instance v0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;-><init>(Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;Ljava/lang/reflect/Method;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleNotification(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 145
    sget-object v0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    const-string v3, "alert"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    :try_start_0
    const-string v4, "Type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 161
    :goto_0
    const-string v4, "send_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    if-ne v0, v1, :cond_1

    .line 165
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendToast(Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->doNotificationCallback()V

    .line 212
    return-void

    .line 157
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 167
    :cond_1
    if-ne v0, v5, :cond_2

    .line 169
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_2
    if-ne v0, v6, :cond_0

    .line 173
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendToast(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_3
    const-string v4, "deleted_messages"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    if-ne v0, v1, :cond_4

    .line 181
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendToast(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_4
    if-ne v0, v5, :cond_5

    .line 185
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_5
    if-ne v0, v6, :cond_0

    .line 189
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendToast(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_6
    if-ne v0, v1, :cond_7

    .line 197
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendToast(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_7
    if-ne v0, v5, :cond_8

    .line 201
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_8
    if-ne v0, v6, :cond_0

    .line 205
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendToast(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v3}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->sendNotification(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleRegistration(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 216
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, v0}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->doRegistrationCallback(Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method private sendNotification(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    const-string v1, "notification"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 240
    iget-object v1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_0

    .line 245
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v2, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 251
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 252
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 253
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 254
    invoke-virtual {p0}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->getGameTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 255
    invoke-virtual {p0}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->getIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 256
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 257
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 263
    sget v1, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_NotificationId:I

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 265
    :cond_0
    return-void
.end method

.method private sendToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    .line 227
    const/4 v1, 0x0

    .line 229
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    sput-object v0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 51
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_Context:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0, p2}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->handleRegistration(Landroid/content/Intent;)V

    .line 66
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->setResultCode(I)V

    .line 67
    return-void

    .line 58
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->handleNotification(Landroid/content/Intent;)V

    goto :goto_0
.end method
