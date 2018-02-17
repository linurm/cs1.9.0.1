.class Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;
.super Ljava/lang/Object;
.source "s3eCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/s3eCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s3eCameraTakePicture"
.end annotation


# instance fields
.field public m_bToFile:Z

.field public m_nType:I

.field public m_strFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/ideaworks3d/marmalade/s3eCamera;


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 673
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_strFile:Ljava/lang/String;

    .line 676
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_bToFile:Z

    .line 677
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_nType:I

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    .prologue
    .line 680
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 681
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 682
    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_bToFile:Z

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_strFile:Ljava/lang/String;

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_nType:I

    invoke-static {v1, p1, v2, v0}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->SaveToFile(Ljava/lang/String;[BILjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v1

    .line 685
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera;->onTakeImageCallback([BII)V
    invoke-static {v2, v1, v3, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$500(Lcom/ideaworks3d/marmalade/s3eCamera;[BII)V

    .line 690
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera;->onTakeImageCallback([BII)V
    invoke-static {v1, p1, v2, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$500(Lcom/ideaworks3d/marmalade/s3eCamera;[BII)V

    goto :goto_0
.end method
