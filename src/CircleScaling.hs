module CircleScaling where
  -- import Data.ByteString as B
  import Codec.Picture
  import Codec.Picture.ScaleDCT (scale)
  -- import Vision.Image.Transform.ScaleDCT
  
  loadImage = do
    imageLoad <- readPng "src/circle.png"
    case imageLoad of
      Left error -> putStrLn error
      Right (ImageRGBA8 image) -> do
        writePng "src/circle2.png" (scale (100,100) image)

      