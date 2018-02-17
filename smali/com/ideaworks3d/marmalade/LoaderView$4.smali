.class Lcom/ideaworks3d/marmalade/LoaderView$4;
.super Ljava/lang/Object;
.source "LoaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/LoaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ideaworks3d/marmalade/LoaderView;


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/LoaderView;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderView$4;->this$0:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView$4;->this$0:Lcom/ideaworks3d/marmalade/LoaderView;

    # getter for: Lcom/ideaworks3d/marmalade/LoaderView;->m_RunOnOSThread:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->access$100(Lcom/ideaworks3d/marmalade/LoaderView;)Ljava/lang/Runnable;

    move-result-object v1

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView$4;->this$0:Lcom/ideaworks3d/marmalade/LoaderView;

    # invokes: Lcom/ideaworks3d/marmalade/LoaderView;->runOnOSThreadNative()V
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->access$200(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 266
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView$4;->this$0:Lcom/ideaworks3d/marmalade/LoaderView;

    # getter for: Lcom/ideaworks3d/marmalade/LoaderView;->m_RunOnOSThread:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->access$100(Lcom/ideaworks3d/marmalade/LoaderView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
