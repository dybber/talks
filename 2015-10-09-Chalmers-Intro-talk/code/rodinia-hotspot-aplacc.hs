module Main where
import qualified Prelude as P
import Prelude ((+), (-), (*), (/))
import Data.Array.Accelerate
import qualified Data.Array.Accelerate.CUDA as Backend
import qualified APLAcc.Primitives as Prim
 
program :: P.IO (Acc (Scalar P.Double))
program
  = do v2 <- Prim.readDoubleVecFile
               ['.', '.', '/', 'd', 'a', 't', 'a', '/', 't', 'e', 'm', 'p', '_',
                '5', '1', '2']
       v3 <- Prim.readDoubleVecFile
               ['.', '.', '/', 'd', 'a', 't', 'a', '/', 'p', 'o', 'w', 'e', 'r',
                '_', '5', '1', '2']
       v4 <- Prim.mem Backend.run
               (Prim.reshape0
                  (lift
                     ((Z) :. (constant (512 :: P.Int)) :. (constant (512 :: P.Int))))
                  v2)
       v5 <- Prim.mem Backend.run
               (Prim.reshape0
                  (lift
                     ((Z) :. (constant (512 :: P.Int)) :. (constant (512 :: P.Int))))
                  v3)
       Prim.bench Backend.run1 Backend.run
         (\ v86 ->
            let v103
                  = (constant (1.6e-2 :: P.Double)) / (constant (512.0 :: P.Double))
                      :: Exp P.Double
              in
              let v104
                    = (constant (1.6e-2 :: P.Double)) / (constant (512.0 :: P.Double))
                        :: Exp P.Double
                in
                let v105
                      = (constant (0.5 :: P.Double)) *
                          ((constant (1750000.0 :: P.Double)) *
                             ((constant (5.0e-4 :: P.Double)) * ((v104) * (v103))))
                          :: Exp P.Double
                  in
                  let v106
                        = (v104) /
                            ((constant (2.0 :: P.Double)) *
                               ((constant (100.0 :: P.Double)) *
                                  ((constant (5.0e-4 :: P.Double)) * (v103))))
                            :: Exp P.Double
                    in
                    let v107
                          = (v103) /
                              ((constant (2.0 :: P.Double)) *
                                 ((constant (100.0 :: P.Double)) *
                                    ((constant (5.0e-4 :: P.Double)) * (v104))))
                              :: Exp P.Double
                      in
                      let v108
                            = (constant (5.0e-4 :: P.Double)) /
                                ((constant (100.0 :: P.Double)) * ((v103) * (v104)))
                                :: Exp P.Double
                        in
                        let v109
                              = (constant (3000000.0 :: P.Double)) /
                                  (constant (437.5 :: P.Double))
                                  :: Exp P.Double
                          in
                          let v110 = (constant (1.0e-3 :: P.Double)) / (v109) :: Exp P.Double
                            in
                            let v114
                                  = Prim.cons
                                      (Prim.each Prim.b2i
                                         (Prim.reshape0 (lift ((Z) :. (constant (512 :: P.Int))))
                                            (use (fromList ((Z) :. (1 :: P.Int)) [P.True]) ::
                                               Acc (Array DIM1 P.Bool))))
                                      (Prim.snoc
                                         (Prim.reshape0
                                            (lift
                                               ((Z) :. (constant (512 :: P.Int)) :.
                                                  (constant (510 :: P.Int))))
                                            (use (fromList ((Z) :. (1 :: P.Int)) [2]) ::
                                               Acc (Array DIM1 P.Int)))
                                         (Prim.each Prim.b2i
                                            (Prim.reshape0 (lift ((Z) :. (constant (512 :: P.Int))))
                                               (use (fromList ((Z) :. (1 :: P.Int)) [P.True]) ::
                                                  Acc (Array DIM1 P.Bool)))))
                                      :: Acc (Array DIM2 P.Int)
                              in
                              let v117
                                    = Prim.transp
                                        (Prim.cons
                                           (Prim.each Prim.b2i
                                              (Prim.reshape0
                                                 (lift ((Z) :. (constant (512 :: P.Int))))
                                                 (use (fromList ((Z) :. (1 :: P.Int)) [P.True]) ::
                                                    Acc (Array DIM1 P.Bool))))
                                           (Prim.snoc
                                              (Prim.reshape0
                                                 (lift
                                                    ((Z) :. (constant (512 :: P.Int)) :.
                                                       (constant (510 :: P.Int))))
                                                 (use (fromList ((Z) :. (1 :: P.Int)) [2]) ::
                                                    Acc (Array DIM1 P.Int)))
                                              (Prim.each Prim.b2i
                                                 (Prim.reshape0
                                                    (lift ((Z) :. (constant (512 :: P.Int))))
                                                    (use (fromList ((Z) :. (1 :: P.Int)) [P.True])
                                                       :: Acc (Array DIM1 P.Bool))))))
                                        :: Acc (Array DIM2 P.Int)
                                in
                                Prim.reduce P.max (constant (-Prim.infinity :: P.Double))
                                  (Prim.reduce P.max (constant (-Prim.infinity :: P.Double))
                                     (Prim.power Backend.run1 Backend.run
                                        (\ v118 ->
                                           let v123
                                                 = Prim.cat
                                                     (Prim.transp
                                                        (Prim.drop (constant (1 :: P.Int))
                                                           (Prim.transp v118)))
                                                     (Prim.each Prim.i2d
                                                        (Prim.each Prim.b2i
                                                           (Prim.reshape0
                                                              (lift
                                                                 ((Z) :. (constant (512 :: P.Int))
                                                                    :. (constant (1 :: P.Int))))
                                                              (use
                                                                 (fromList ((Z) :. (1 :: P.Int))
                                                                    [P.False])
                                                                 :: Acc (Array DIM1 P.Bool)))))
                                                     :: Acc (Array DIM2 P.Double)
                                             in
                                             let v126
                                                   = Prim.cat
                                                       (Prim.each Prim.i2d
                                                          (Prim.each Prim.b2i
                                                             (Prim.reshape0
                                                                (lift
                                                                   ((Z) :. (constant (512 :: P.Int))
                                                                      :. (constant (1 :: P.Int))))
                                                                (use
                                                                   (fromList ((Z) :. (1 :: P.Int))
                                                                      [P.False])
                                                                   :: Acc (Array DIM1 P.Bool)))))
                                                       (Prim.transp
                                                          (Prim.drop (constant (-1 :: P.Int))
                                                             (Prim.transp v118)))
                                                       :: Acc (Array DIM2 P.Double)
                                               in
                                               let v134
                                                     = Prim.zipWith (-) (Prim.zipWith (+) v123 v126)
                                                         (Prim.zipWith (*) (Prim.each Prim.i2d v114)
                                                            v118)
                                                         :: Acc (Array DIM2 P.Double)
                                                 in
                                                 let v137
                                                       = Prim.transp
                                                           (Prim.snoc
                                                              (Prim.transp
                                                                 (Prim.drop (constant (1 :: P.Int))
                                                                    v118))
                                                              (Prim.each Prim.i2d
                                                                 (Prim.each Prim.b2i
                                                                    (Prim.reshape0
                                                                       (lift
                                                                          ((Z) :.
                                                                             (constant
                                                                                (512 :: P.Int))))
                                                                       (use
                                                                          (fromList
                                                                             ((Z) :. (1 :: P.Int))
                                                                             [P.False])
                                                                          ::
                                                                          Acc
                                                                            (Array DIM1 P.Bool))))))
                                                           :: Acc (Array DIM2 P.Double)
                                                   in
                                                   let v140
                                                         = Prim.transp
                                                             (Prim.cons
                                                                (Prim.each Prim.i2d
                                                                   (Prim.each Prim.b2i
                                                                      (Prim.reshape0
                                                                         (lift
                                                                            ((Z) :.
                                                                               (constant
                                                                                  (512 :: P.Int))))
                                                                         (use
                                                                            (fromList
                                                                               ((Z) :. (1 :: P.Int))
                                                                               [P.False])
                                                                            ::
                                                                            Acc
                                                                              (Array DIM1
                                                                                 P.Bool)))))
                                                                (Prim.transp
                                                                   (Prim.drop
                                                                      (constant (-1 :: P.Int))
                                                                      v118)))
                                                             :: Acc (Array DIM2 P.Double)
                                                     in
                                                     let v148
                                                           = Prim.zipWith (-)
                                                               (Prim.zipWith (+) v137 v140)
                                                               (Prim.zipWith (*)
                                                                  (Prim.each Prim.i2d v117)
                                                                  v118)
                                                               :: Acc (Array DIM2 P.Double)
                                                       in
                                                       let v160
                                                             = Prim.each
                                                                 (\ v159 ->
                                                                    ((v110) / (v105)) * (v159))
                                                                 (Prim.zipWith (+) v5
                                                                    (Prim.zipWith (+)
                                                                       (Prim.each
                                                                          (\ v154 ->
                                                                             (v154) / (v107))
                                                                          v148)
                                                                       (Prim.zipWith (+)
                                                                          (Prim.each
                                                                             (\ v151 ->
                                                                                (v151) / (v106))
                                                                             v134)
                                                                          (Prim.each
                                                                             (\ v150 ->
                                                                                (v150) / (v108))
                                                                             (Prim.each
                                                                                (\ v149 ->
                                                                                   (constant
                                                                                      (80.0 ::
                                                                                         P.Double))
                                                                                     - (v149))
                                                                                v118)))))
                                                                 :: Acc (Array DIM2 P.Double)
                                                         in Prim.zipWith (+) v118 v160)
                                        360
                                        v4)))
         30
         (unit (constant (0.0 :: P.Double)))
main = program P.>>= P.print P.. Backend.run
