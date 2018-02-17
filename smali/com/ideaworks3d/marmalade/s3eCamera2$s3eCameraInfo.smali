.class Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;
.super Ljava/lang/Object;
.source "s3eCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/s3eCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "s3eCameraInfo"
.end annotation


# instance fields
.field public m_AutoFocusAvailable:Z

.field public m_CameraId:Ljava/lang/String;

.field public m_FlashAvailable:Z

.field final synthetic this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;


# direct methods
.method public constructor <init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_CameraId:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_AutoFocusAvailable:Z

    .line 90
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_FlashAvailable:Z

    .line 91
    return-void
.end method
