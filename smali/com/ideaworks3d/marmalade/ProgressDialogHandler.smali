.class Lcom/ideaworks3d/marmalade/ProgressDialogHandler;
.super Landroid/os/Handler;
.source "LoaderActivity.java"


# static fields
.field public static final PROGRESS_FINISH:I = 0x1

.field public static final PROGRESS_START:I


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 46
    :pswitch_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
