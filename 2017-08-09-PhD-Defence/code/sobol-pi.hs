module Main where
import qualified Prelude as P
import Prelude ((+), (-), (*), (/))
import Data.Array.Accelerate
import qualified Data.Array.Accelerate.CUDA as Backend
import qualified APLAcc.Primitives as Prim
 
program :: P.IO (Acc (Scalar P.Double))
program
  = do v1 <- Prim.readIntVecFile
               ['.', '.', '/', 'd', 'a', 't', 'a', '/', 'd', 'i', 'r', 'e', 'c',
                't', 'i', 'o', 'n', '_', 'v', 'e', 'c', 't', 'o', 'r', 's']
       v3 <- Prim.mem Backend.run
               (Prim.reshape0
                  (lift ((Z) :. (constant (2 :: P.Int)) :. (constant (30 :: P.Int))))
                  v1)
       Prim.bench Backend.run1 Backend.run
         (\ v65 ->
            let v68
                  = Prim.iotaV (constant (10000000 :: P.Int)) ::
                      Acc (Array DIM1 P.Int)
              in
              let v69
                    = Prim.reshape0
                        (lift ((Z) :. (constant (2 :: P.Int)) :. (constant (30 :: P.Int))))
                        v3
                        :: Acc (Array DIM2 P.Int)
                in
                let v74
                      = Prim.iotaV (constant (30 :: P.Int)) :: Acc (Array DIM1 P.Int)
                  in
                  let v80
                        = Prim.transp
                            (Prim.reshape0
                               (lift
                                  ((Z) :. (constant (30 :: P.Int)) :.
                                     (constant (10000000 :: P.Int))))
                               v68)
                            :: Acc (Array DIM2 P.Int)
                    in
                    let v81
                          = Prim.reshape0
                              (lift
                                 ((Z) :. (constant (10000000 :: P.Int)) :.
                                    (constant (30 :: P.Int))))
                              v74
                              :: Acc (Array DIM2 P.Int)
                      in
                      let v89
                            = Prim.zipWith Prim.xori v80
                                (Prim.each (\ v85 -> shiftR v85 (constant (1 :: P.Int))) v80)
                                :: Acc (Array DIM2 P.Int)
                        in
                        let v95
                              = use
                                  (Backend.run
                                     (Prim.each (\ v94 -> not ((constant (0 :: P.Int)) ==* (v94)))
                                        (Prim.zipWith Prim.andi v89
                                           (Prim.each (\ v91 -> shiftL (constant (1 :: P.Int)) v91)
                                              (Prim.each (\ v90 -> (v90) - (constant (1 :: P.Int)))
                                                 v81)))))
                                  :: Acc (Array DIM2 P.Bool)
                          in
                          let v97
                                = use (Backend.run (Prim.transp v69)) :: Acc (Array DIM2 P.Int)
                            in
                            let v102
                                  = Prim.transp2
                                      (\ a ->
                                         let ((Z :. a1) :. a2) :. a3 = unlift a in
                                           lift
                                             (Z :. (a2 :: Exp P.Int) :. (a1 :: Exp P.Int) :.
                                                (a3 :: Exp P.Int)),
                                       \ a ->
                                         let ((Z :. a1) :. a2) :. a3 = unlift a in
                                           lift
                                             (Z :. (a2 :: Exp P.Int) :. (a1 :: Exp P.Int) :.
                                                (a3 :: Exp P.Int)))
                                      (Prim.reshape0
                                         (lift
                                            ((Z) :. (constant (2 :: P.Int)) :.
                                               (constant (10000000 :: P.Int))
                                               :. (constant (30 :: P.Int))))
                                         v95)
                                      :: Acc (Array DIM3 P.Bool)
                              in
                              let v108
                                    = Prim.transp2
                                        (\ a ->
                                           let ((Z :. a1) :. a2) :. a3 = unlift a in
                                             lift
                                               (Z :. (a1 :: Exp P.Int) :. (a3 :: Exp P.Int) :.
                                                  (a2 :: Exp P.Int)),
                                         \ a ->
                                           let ((Z :. a1) :. a2) :. a3 = unlift a in
                                             lift
                                               (Z :. (a1 :: Exp P.Int) :. (a3 :: Exp P.Int) :.
                                                  (a2 :: Exp P.Int)))
                                        (Prim.reshape0
                                           (lift
                                              ((Z) :. (constant (10000000 :: P.Int)) :.
                                                 (constant (30 :: P.Int))
                                                 :. (constant (2 :: P.Int))))
                                           v97)
                                        :: Acc (Array DIM3 P.Int)
                                in
                                let v114
                                      = Prim.reduce Prim.xori (constant (0 :: P.Int))
                                          (Prim.zipWith (*) (Prim.each Prim.b2i v102) v108)
                                          :: Acc (Array DIM2 P.Int)
                                  in
                                  let v117
                                        = Prim.each
                                            (\ v116 ->
                                               (v116) / (constant (1.073741824e9 :: P.Double)))
                                            (Prim.each Prim.i2d v114)
                                            :: Acc (Array DIM2 P.Double)
                                    in
                                    unit
                                      ((constant (4.0 :: P.Double)) *
                                         ((Prim.i2d
                                             (the
                                                (Prim.reduce (+) (constant (0 :: P.Int))
                                                   (Prim.each Prim.b2i
                                                      (Prim.each
                                                         (\ v122 ->
                                                            (constant (1.0 :: P.Double)) >* (v122))
                                                         (Prim.each
                                                            (\ v121 ->
                                                               (v121) P.**
                                                                 ((constant (1.0 :: P.Double)) /
                                                                    (constant (2.0 :: P.Double))))
                                                            (Prim.reduce (+)
                                                               (constant (0.0 :: P.Double))
                                                               (Prim.each
                                                                  (\ v118 ->
                                                                     (v118) P.**
                                                                       (constant (2.0 :: P.Double)))
                                                                  v117))))))))
                                            / (constant (1.0e7 :: P.Double)))))
         30
         (unit (constant (0.0 :: P.Double)))
main = program P.>>= P.print P.. Backend.run
