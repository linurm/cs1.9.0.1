.class public Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;
.super Ljava/lang/Object;
.source "s3eCameraHelpAPI.java"


# static fields
.field static final S3E_CAMERA_ERR_IO:I = 0xa

.field static final S3E_CAMERA_ERR_MEM:I = 0x8

.field static final S3E_CAMERA_ERR_NONE:I = 0x0

.field static final S3E_CAMERA_ERR_OPEN_FILE:I = 0x9

.field static final S3E_CAMERA_ERR_OPERATION_NA:I = 0xc

.field static final S3E_CAMERA_ERR_UNKNOWN:I = 0xb

.field static final S3E_CAMERA_SAVE_PATH_CAMERA:I = 0x2

.field static final S3E_CAMERA_SAVE_PATH_GALLERY:I = 0x1

.field static final S3E_CAMERA_SAVE_PATH_GALLERY_AND_CAMERA:I = 0x3

.field static final S3E_CAMERA_SAVE_PATH_USER:I

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "s3eCameraHelpAPI"

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SaveToCameraFolder(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 4

    .prologue
    .line 74
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v1, "SaveToCameraFolder: start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Camera"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 84
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->SaveToFile_internal(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static SaveToFile(Ljava/lang/String;[BILjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SaveToFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    packed-switch p2, :pswitch_data_0

    .line 161
    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    invoke-static {p0, p1, p3}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->SaveToFile_internal(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-static {p0, p1, p3}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->SaveToGalleryFolder(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-static {p0, p1, p3}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->SaveToCameraFolder(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static SaveToFile_internal(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 5

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    if-nez v1, :cond_0

    .line 37
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken: can not allocate memory for file."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 70
    :goto_0
    return-object v0

    .line 44
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    sget-object v2, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveToFile_internal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 53
    sget-object v2, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken: Unsupported exception."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 55
    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 57
    :catch_1
    move-exception v1

    .line 59
    sget-object v2, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken: can not open file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 61
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 63
    :catch_2
    move-exception v1

    .line 65
    sget-object v2, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken: io error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static SaveToGalleryFolder(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v1, "SaveToGalleryFolder: start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    const-string v0, "Camera image"

    .line 102
    if-eqz p0, :cond_0

    .line 104
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 105
    const-string v0, "title"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "_display_name"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "description"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "date_added"

    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v0, "datetaken"

    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 114
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 116
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 117
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    .line 118
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 119
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 122
    :try_start_1
    sget-object v3, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SaveToGalleryFolder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 143
    :goto_1
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 127
    :goto_2
    sget-object v2, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken: Unsupported exception."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 129
    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 133
    :goto_3
    sget-object v2, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken: can not open file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 135
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 137
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 139
    :goto_4
    sget-object v2, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken: io error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 141
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 137
    :catch_3
    move-exception v1

    goto :goto_4

    .line 131
    :catch_4
    move-exception v1

    goto :goto_3

    .line 125
    :catch_5
    move-exception v1

    goto :goto_2

    :cond_0
    move-object p0, v0

    goto/16 :goto_0
.end method

.method public static getPermissionGrantedValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 167
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_0
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->TAG:Ljava/lang/String;

    const-string v1, "Warning: getPermissionGrantedValue called in compatibility mode (app is not targeting api level 23)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static hasCameraPermissionGranted()Z
    .locals 1

    .prologue
    .line 179
    const-string v0, "android.permission.CAMERA"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->getPermissionGrantedValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCameraSystemFeature()Z
    .locals 4

    .prologue
    .line 183
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 184
    const-string v0, "android.hardware.camera"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.hardware.camera.front"

    .line 185
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 186
    :goto_0
    if-nez v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 188
    const-string v0, "android.hardware.camera.any"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 190
    :cond_1
    return v0

    .line 185
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
