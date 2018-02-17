.class Lcom/ideaworks3d/marmalade/s3eCamera2$2;
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
    .line 225
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$2;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 229
    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraLock:Ljava/lang/Object;
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$200()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$2;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$300(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 233
    monitor-exit v10

    .line 271
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v11

    .line 236
    invoke-virtual {v11}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v12

    .line 237
    array-length v1, v12

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 240
    invoke-virtual {v11}, Landroid/media/Image;->close()V

    .line 241
    monitor-exit v10

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 243
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Landroid/media/Image;->getWidth()I

    move-result v2

    .line 244
    invoke-virtual {v11}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 245
    const/4 v1, 0x2

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v1, v2

    if-lt v1, v4, :cond_2

    const/4 v0, 0x2

    aget-object v0, v12, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    .line 246
    :cond_2
    mul-int/lit8 v1, v2, 0x3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 248
    const/4 v1, 0x0

    .line 249
    const/4 v4, 0x1

    aget-object v4, v12, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 251
    const/4 v4, 0x0

    aget-object v4, v12, v4

    const/4 v5, 0x0

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->CopyLines([BIIILandroid/media/Image$Plane;I)I
    invoke-static/range {v0 .. v5}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$400([BIIILandroid/media/Image$Plane;I)I

    move-result v5

    .line 252
    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v7, v3, 0x2

    const/4 v1, 0x1

    aget-object v8, v12, v1

    const/4 v9, 0x0

    move-object v4, v0

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->CopyLines([BIIILandroid/media/Image$Plane;I)I
    invoke-static/range {v4 .. v9}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$400([BIIILandroid/media/Image$Plane;I)I

    move-result v5

    .line 253
    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v7, v3, 0x2

    const/4 v1, 0x2

    aget-object v8, v12, v1

    const/4 v9, 0x0

    move-object v4, v0

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->CopyLines([BIIILandroid/media/Image$Plane;I)I
    invoke-static/range {v4 .. v9}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$400([BIIILandroid/media/Image$Plane;I)I

    .line 254
    const v6, 0x32315659

    .line 267
    :goto_1
    iget-object v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$2;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 268
    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->getOrientation()I

    move-result v9

    move-object v5, v0

    move v7, v2

    move v8, v3

    .line 267
    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->previewCallback([BIIII)V
    invoke-static/range {v4 .. v9}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$500(Lcom/ideaworks3d/marmalade/s3eCamera2;[BIIII)V

    .line 269
    invoke-virtual {v11}, Landroid/media/Image;->close()V

    .line 270
    monitor-exit v10

    goto :goto_0

    .line 258
    :cond_3
    const/4 v4, 0x0

    aget-object v4, v12, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 259
    const/4 v4, 0x1

    aget-object v4, v12, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 260
    const/4 v4, 0x2

    aget-object v4, v12, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 261
    const/4 v5, 0x1

    .line 262
    const/4 v4, 0x0

    aget-object v4, v12, v4

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->CopyLines([BIIILandroid/media/Image$Plane;I)I
    invoke-static/range {v0 .. v5}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$400([BIIILandroid/media/Image$Plane;I)I

    move-result v5

    .line 263
    div-int/lit8 v7, v3, 0x2

    const/4 v1, 0x1

    aget-object v8, v12, v1

    const/4 v9, 0x2

    move-object v4, v0

    move v6, v2

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->CopyLines([BIIILandroid/media/Image$Plane;I)I
    invoke-static/range {v4 .. v9}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$400([BIIILandroid/media/Image$Plane;I)I

    move-result v1

    .line 264
    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x2

    aget-object v4, v12, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v12, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    aput-byte v4, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    const/16 v6, 0x11

    goto :goto_1
.end method
