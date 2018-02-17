.class Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "s3eGCMClientBroadcastReceiver.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->doNotificationCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;

.field final synthetic val$extension_class:Ljava/lang/Class;

.field final synthetic val$notification_method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;->this$0:Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;

    iput-object p2, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;->val$notification_method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;->val$extension_class:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;->val$notification_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;->val$notification_method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;->val$notification_method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$1;->val$extension_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method
