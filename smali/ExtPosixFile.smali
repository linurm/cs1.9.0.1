.class LExtPosixFile;
.super Ljava/lang/Object;
.source "ExtPosixFile.java"


# instance fields
.field private folderCount:I

.field private folderList:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, LExtPosixFile;->folderList:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, LExtPosixFile;->folderCount:I

    return-void
.end method


# virtual methods
.method public check_file_exists_native(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public close_native(I)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list2_native(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 95
    :try_start_0
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public list_close_native(I)I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public list_directory_native(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public list_native(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LExtPosixFile;->folderList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, LExtPosixFile;->folderCount:I

    .line 76
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public list_next_native(II)I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public list_next_native()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, LExtPosixFile;->folderList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, LExtPosixFile;->folderCount:I

    iget-object v1, p0, LExtPosixFile;->folderList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v0, p0, LExtPosixFile;->folderList:[Ljava/lang/String;

    iget v1, p0, LExtPosixFile;->folderCount:I

    aget-object v0, v0, v1

    .line 84
    iget v1, p0, LExtPosixFile;->folderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LExtPosixFile;->folderCount:I

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open_native(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public open_with_mode_native(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public read_native(II)I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public remove_native(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public rename_native(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public seek_native(III)I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public write_native(II)I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
