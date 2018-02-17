.class LExtS8AndroidHelper$6;
.super Ljava/lang/Thread;
.source "ExtS8AndroidHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LExtS8AndroidHelper;->connectHTTPS(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LExtS8AndroidHelper;

.field final synthetic val$postBody:Ljava/nio/ByteBuffer;

.field final synthetic val$requestIndex:I

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(LExtS8AndroidHelper;Ljava/lang/String;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, LExtS8AndroidHelper$6;->this$0:LExtS8AndroidHelper;

    iput-object p2, p0, LExtS8AndroidHelper$6;->val$urlString:Ljava/lang/String;

    iput-object p3, p0, LExtS8AndroidHelper$6;->val$postBody:Ljava/nio/ByteBuffer;

    iput p4, p0, LExtS8AndroidHelper$6;->val$requestIndex:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 131
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, LExtS8AndroidHelper$6;->val$urlString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 135
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 136
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 137
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    .line 138
    iget-object v2, p0, LExtS8AndroidHelper$6;->val$postBody:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 139
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 141
    iget-object v0, p0, LExtS8AndroidHelper$6;->this$0:LExtS8AndroidHelper;

    iget v1, p0, LExtS8AndroidHelper$6;->val$requestIndex:I

    iget-object v2, p0, LExtS8AndroidHelper$6;->val$urlString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    .line 141
    # invokes: LExtS8AndroidHelper;->onReceiveHTTPSResponse(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v5}, LExtS8AndroidHelper;->access$100(LExtS8AndroidHelper;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 147
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .line 148
    if-gez v2, :cond_0

    .line 155
    iget-object v0, p0, LExtS8AndroidHelper$6;->this$0:LExtS8AndroidHelper;

    iget v1, p0, LExtS8AndroidHelper$6;->val$requestIndex:I

    # invokes: LExtS8AndroidHelper;->didFinishLoadingHTTPSData(I)V
    invoke-static {v0, v1}, LExtS8AndroidHelper;->access$300(LExtS8AndroidHelper;I)V

    .line 161
    :goto_1
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, LExtS8AndroidHelper$6;->this$0:LExtS8AndroidHelper;

    iget v4, p0, LExtS8AndroidHelper$6;->val$requestIndex:I

    # invokes: LExtS8AndroidHelper;->onReceiveHTTPSData(I[BI)V
    invoke-static {v3, v4, v1, v2}, LExtS8AndroidHelper;->access$200(LExtS8AndroidHelper;I[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "marmalade6"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    iget-object v1, p0, LExtS8AndroidHelper$6;->this$0:LExtS8AndroidHelper;

    iget v2, p0, LExtS8AndroidHelper$6;->val$requestIndex:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: LExtS8AndroidHelper;->didFailWithError(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, LExtS8AndroidHelper;->access$400(LExtS8AndroidHelper;ILjava/lang/String;)V

    goto :goto_1
.end method
