.class Lcom/ideaworks3d/marmalade/s3eCamera2$1;
.super Ljava/lang/Object;
.source "s3eCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/s3eCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$1;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 216
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 217
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 219
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$1;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->StartCapture(Z)V
    invoke-static {v0, v3}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$000(Lcom/ideaworks3d/marmalade/s3eCamera2;Z)V

    .line 220
    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TakePictureSem:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 221
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$1;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/s3eCamera2;->SaveToFile([B)V

    .line 222
    return-void
.end method
