.class Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;
.super Ljava/lang/Object;
.source "LoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/LoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MulticastLockFacade"
.end annotation


# instance fields
.field private m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

.field final synthetic this$0:Lcom/ideaworks3d/marmalade/LoaderThread;


# direct methods
.method public constructor <init>(Lcom/ideaworks3d/marmalade/LoaderThread;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->this$0:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 1425
    const-string v0, "Marmalade"

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 1426
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 1460
    :cond_0
    return-void
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    .line 1436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->m_multiCastLockReal:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 1449
    :cond_0
    return-void
.end method
